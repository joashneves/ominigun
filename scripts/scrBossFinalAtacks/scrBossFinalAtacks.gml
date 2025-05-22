function scrBossFinalAtacksDefault(){
		var bala = instance_create_depth(x,y,0,oThornAtack00);
		bala.speed = 7;		
}
function scrBossFinalAtacks00(){
	var _bala = instance_create_depth(oPlayer.x, oPlayer.y-120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x+120, oPlayer.y,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x, oPlayer.y+120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x-120, oPlayer.y,0, oThornAtack00);
	_bala.speed = 0;
}
function scrBossFinalAtacks01(){
	var _bala = instance_create_depth(oPlayer.x-120, oPlayer.y-120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x+120, oPlayer.y-120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x+120, oPlayer.y+120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x-120, oPlayer.y+120,0, oThornAtack00);
	_bala.speed = 0;
}
function scrBossFinalAtacks02(){
	  var _raio = irandom_range(120, 200);  // Ajuste o raio conforme necessário
    for (var _angulo = 0; _angulo < 360; _angulo += 36) {  // Incrementa o ângulo para criar balas em posições ao redor do círculo
        var _radiano = degtorad(_angulo);
        var _x = oPlayer.x + _raio * cos(_radiano);
        var _y = oPlayer.y + _raio * sin(_radiano);

        var _bala = instance_create_depth(_x, _y, 0, oBalaBoss01);
		_bala.direction = point_direction(x,y,oPlayer.x,oPlayer.y);
		_bala.speed = 0.5;
    }
}
function scrBossFinalAtacks03(){
	var bala = instance_create_depth(x,y,0,oAlarmBossAtack);
}
function scrBossFinalAtacks04(){
		 instance_create_depth(oPlayer.x,oPlayer.y,0,oAlarmBossAtack01);
}
function scrBossFinalAtacks05() {
    var vx = camera_get_view_x(view_camera[0]);
    var vy = camera_get_view_y(view_camera[0]);
    var vw = camera_get_view_width(view_camera[0]);
    var vh = camera_get_view_height(view_camera[0]);
    // Centro (sobre o jogador)
    instance_create_depth(oPlayer.x, oPlayer.y, 0, oAlarmBossAtack02);
    // Centro da tela
    var cx = vx + vw * 0.5;
    var cy = vy + vh * 0.5;
    instance_create_depth(cx, cy, 0, oAlarmBossAtack02);
    // Cantos
    instance_create_depth(vx, vy, 0, oAlarmBossAtack02);
    instance_create_depth(vx + vw, vy, 0, oAlarmBossAtack02);
    instance_create_depth(vx, vy + vh, 0, oAlarmBossAtack02);
    instance_create_depth(vx + vw, vy + vh, 0, oAlarmBossAtack02);
    // Bordas
    instance_create_depth(cx, vy, 0, oAlarmBossAtack02);         // topo centro
    instance_create_depth(cx, vy + vh, 0, oAlarmBossAtack02);    // base centro
    instance_create_depth(vx, cy, 0, oAlarmBossAtack02);         // esquerda meio
    instance_create_depth(vx + vw, cy, 0, oAlarmBossAtack02);    // direita meio

}
function scrBossFinalAtacks06() {
    // Centro (sobre o jogador)
    instance_create_depth(oPlayer.x, oPlayer.y, 0, oSequenciaBossAtack00);
    instance_create_depth(oPlayer.x-128, oPlayer.y, 0, oSequenciaBossAtack00);
    instance_create_depth(oPlayer.x+128, oPlayer.y, 0, oSequenciaBossAtack00);    
}
function scrBossFinalAtacks07(){
		var enemy = instance_create_layer(oPlayer.x-90,oPlayer.y-90, "Boss", oThornAtack00);
		enemy.sprite_index = sEnemyOlhoBoss01;
		var enemy = instance_create_layer(oPlayer.x+90,oPlayer.y-90, "Boss", oThornAtack00);
		enemy.sprite_index = sEnemyOlhoBoss01;
}
function scrBossFinalAtacks08(){
		var _bala = instance_create_depth(choose(oPlayer.x-180,oPlayer.x+180),choose(oPlayer.y-180,oPlayer.y+180),0, oBalaBoss03);
	_bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
	_bala.sprite_index = sEnemyOlhoBoss02;
	_bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
	_bala.speed = 2;
}