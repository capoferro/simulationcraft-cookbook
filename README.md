# SimulationCraft Cookbook

Installs simc

## Attributes

| attribute                                | description               | default              |
|------------------------------------------|---------------------------|----------------------|
| [:simulationcraft][:home]                | Directory to install simc | /opt/simulationcraft |
| [:simulationcraft][:source][:repository] | Repository to pull source | https://simulationcraft.googlecode.com/svn/trunk |

## Usage

### simulationcraft::default

Include `simulationcraft` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[simulationcraft]"
  ]
}
```

or via include_recipe

```ruby
include_recipe "simulationcraft"
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Josiah Kiehl (<josiah@skirmisher.net>)
