# Photo Mover
Photo Mover is a simple script that moves photos from a source folder to a target folder by organizing the photos by year, month and date - `/2020/05/28/DSC_0001.NEF`. It uses the modified date of the file - which in theory should be the date the photo was taken at.

## Usage
> :warning: This is an experimental tool that I use in my private day-to-day business. It is not meant for general use and does not cover all possible scenarios or use cases. This said, the safety of the photos is not guaranteed and bugs/problems may arrise during usage. Use at your own discretion!

You can clone the repo and create a ruby executable file like the one present in the repo `temp_to_ehdd.rb`. Specify you `source_path` and the `destination_root`
* `source_path` - the mover will take all files under that folder, it will not look into sub-folders. There is no need of a trailing forward-slash.
* `destination_root` - the mover will organize the photos under the specified root path, i.e. it will create folder structure under it to match the organizing patter `/yyyy/mm/dd/filename.ext`

## License
Tinwe is released under the [MIT License](https://opensource.org/licenses/MIT). No warranties included!
