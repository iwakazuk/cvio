import 'package:cvio/models/drive_destination.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('accepts account-specific folder links and normalizes tracking parameters', () {
    final folder = DriveDestination.parse(' https://drive.google.com/drive/u/0/folders/abc_123-xyz?usp=sharing ');
    expect(folder.id, 'abc_123-xyz');
    expect(folder.url, 'https://drive.google.com/drive/folders/abc_123-xyz');
  });

  test('preserves resource keys required by shared folder links', () {
    final folder = DriveDestination.parse('https://drive.google.com/drive/folders/abc?resourcekey=0-xyz');
    expect(folder.resourceHeaders, {'X-Goog-Drive-Resource-Keys': 'abc/0-xyz'});
    expect(DriveDestination.parse(folder.url).resourceKey, '0-xyz');
  });

  test('rejects other sites, file links, and malformed folder paths', () {
    for (final url in [
      '', 'abc', 'http://drive.google.com/drive/folders/abc',
      'https://drive.google.com.example.com/drive/folders/abc',
      'https://drive.google.com/file/d/abc/view',
      'https://drive.google.com/drive/folders/',
      'https://drive.google.com/drive/folders/abc/extra',
      'https://user@drive.google.com/drive/folders/abc',
      'https://drive.google.com/drive/folders/abc?resourcekey=a%0Ab',
    ]) {
      expect(() => DriveDestination.parse(url), throwsFormatException, reason: url);
    }
  });
}
