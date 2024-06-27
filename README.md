# Godot 4 Confirmation Modal
A Confirmation Modal for Godot 4 that awaits a User's input. We can use a confirmation modal to prompt a user to continue or cancel and execute follow up code accordingly.

## Support My Work
Consider supporting my work on Ko-Fi:
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/E1E3N6OFY)

## Follow Along
This project is accompanied by a Video [Video on YouTube](https://youtu.be/GCFosi_53ro) as well as in [written form on my Website](https://gamedevartisan.com/tutorials/confirmation-modal).

## Getting Started
To use the ConfirmationModal, either add it as a scene instance in your SceneTree directly, 
or add it via code.
``` gdscript
    const ConfirmationModalScene = preload("path/to/scene")
    var conf: ConfirmationModal

    func _ready() -> void:
        conf = ConfirmationModalScene.instantiate()
        add_child(conf)
```

## Customize
The ConfirmationModal has a `customize` function that allows you to customize the fields used.
``` gdscript
    conf.customize(
		"Are you sure?",
		"Any unsaved progress will be lost.",
		"Confirm",
		"Cancel"
	)
```

## Prompt For Input
Simply await a call to the ConfirmationModal's `prompt` method and store the result in a variable for comparison.

``` gdscript
	var confirmed = await conf.prompt(true)
	
	if confirmed:
		get_tree().quit()
```


## Contributing

If you find any mistakes and would like to make a modification, feel free.

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.