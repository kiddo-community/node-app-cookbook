node_app Cookbook
=================
Cookbook for configuring a Kiddo Labs NodeJS Application

Requirements
------------
#### packages
- `nginx`
- `magic_shell`
- `nodejs`
- `pm2`

Attributes
----------
#### node_app::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['node_app']['name']</tt></td>
    <td>String</td>
    <td>The app name</td>
    <td><tt>app</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['path']</tt></td>
    <td>String</td>
    <td>Define the path where the app will run</td>
    <td><tt>/var/apps/app</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['user']</tt></td>
    <td>String</td>
    <td>Define the user that will run the app</td>
    <td><tt>ubuntu</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['user']</tt></td>
    <td>String</td>
    <td>The user that will be set as owner of application path</td>
    <td><tt>ubuntu</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['http']</tt></td>
    <td>Boolean</td>
    <td>Enable http in nginx</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['https']</tt></td>
    <td>Boolean</td>
    <td>Enable https in nginx</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['ssl']['certificate_path']</tt></td>
    <td>String</td>
    <td>Define the ssl certificate path **required when https enabled**</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['ssl']['certificate_key_path']</tt></td>
    <td>String</td>
    <td>Define the ssl certificate key path **required when https enabled**</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['server_name']</tt></td>
    <td>String</td>
    <td>Define the domain name that nginx will bind to</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['proxy_pass']</tt></td>
    <td>String</td>
    <td>Define the address that nginx will proxy</td>
    <td><tt>http://localhost:3000</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['pm2_start']</tt></td>
    <td>String</td>
    <td>Enable execution of pm2</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['node_app']['pm2_process_file']</tt></td>
    <td>String</td>
    <td>Define the name of the `.json` file that contains the pm2 options (starting in folder defined in `['node_app']['path']`)</td>
    <td><tt>process.json</tt></td>
  </tr>
</table>

Usage
-----
#### node_app::default
Just include `app` in your node's `run_list`:

```json
{
  "name":"my_app",
  "run_list": [
    "recipe[node_app]"
  ]
}
```

To define environment variables just add attributes inside ['node_app']['env']
