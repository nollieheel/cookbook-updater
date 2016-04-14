# cookbook-updater-cookbook

Performs package and OS updates on a server. 

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cookbook-updater']['onetime']['reboot']</tt></td>
    <td>Boolean</td>
    <td>Whether to reboot the machine if necessary when using the 'onetime' recipe.</td>
    <td><tt>true</tt></td>
  <tr>
    <td><tt>['cookbook-updater']['packages']['user']</tt></td>
    <td>String</td>
    <td>Standard SSH username for EC2 server.</td>
    <td><tt>(please check default attributes file)</tt></td>
  </tr>
</table>

## Usage

### cookbook-updater::default

Include `cookbook-updater` in your node's `run_list` in order to run the script best suited for regular updates.

```json
{
  "run_list": [
    "recipe[cookbook-updater::default]"
  ]
}
```

### cookbook-updater::onetime
### cookbook-updater::packages

Use `onetime` to install updates for the first time on a server. The recipe `packages` will install vim and write a `/vimrc` file on the user's home directory.

```json
{
  "run_list": [
    "recipe[cookbook-updater::onetime]",
    "recipe[cookbook-updater::packages]"
  ]
}
```

## License and Authors

Author:: Earth U (<iskitingbords@gmail.com>)
