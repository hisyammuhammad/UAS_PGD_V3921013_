extends Node2D

signal hero_mati 

onready var health_progress = $CanvasLayer/HealthBar/TextureProgress
onready var jumlah_koin = $CanvasLayer/CoinBar/Label

func _on_AreaJatuh_body_entered(body):
	
	if body.name == 'Hero':
		
		get_tree().change_scene("res://option.tscn")





func _on_Hero_hero_apdet_health(value):
	health_progress.value = value
	


func _on_Hero_hero_apdet_koin(value):
	jumlah_koin.text = String(value)
