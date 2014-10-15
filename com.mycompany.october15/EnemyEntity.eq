
/*
 * EnemyEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class EnemyEntity : SEEntity
{
	SESprite enemy;
	int w;
	int h;
	int mx;
	int my;
	//int px;
	//int py;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("myenemy", "enemy", 0.1*w, 0.1*h);
		enemy=add_sprite_for_image(SEImage.for_resource("myenemy"));
		enemy.move(Math.random(0, w), Math.random(0, h));
		//px=MainScene.x;
		//py=MainScene.y;
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx=enemy.get_x();
		my=enemy.get_y();
		enemy.move(mx+(MainScene.x-mx)/Math.random(20,50), my+(MainScene.y-my)/Math.random(20,50));
	}

	public void cleanup() {
		base.cleanup();
	}
}
/*
 * EnemyEntity
 * Created by Eqela Studio 2.0b7.4
 */
