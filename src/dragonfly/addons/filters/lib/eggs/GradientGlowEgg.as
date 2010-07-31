package dragonfly.addons.filters.lib.eggs 
{
	import dragonfly.addons.filters.lib.GradientGlowLarva;
	import dragonfly.core.Egg;
	import dragonfly.core.Larva;
	import dragonfly.core.gunz.NymphBullet;

	
	
	/**
	 * @author nybras | nybras@codeine.it
	 */
	public class GradientGlowEgg extends Egg 
	{
		/* ----- FILTER PROPERTIES (tweenable) ------------------------------ */
		
		
		/* ----- INITIALIZING ----------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		public function GradientGlowEgg(
			prop : String,
			larva : Larva,
			end : Number,
			start : Number
		)
		{
			super( prop, larva, end, start );
			_prop_target = _gradient_glow_larva.filter;
		}

		/* ----- GETTER / CASTER -------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		private function get _gradient_glow_larva() : GradientGlowLarva
		{
			return GradientGlowLarva( _larva );
		}

		/* ----- RENDERING -------------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		public function render( bullet : NymphBullet ) : void
		{
			_gradient_glow_larva.filter[ _prop ] = bullet.value;
			_gradient_glow_larva.close.refresh( );
		}

		/* ----- START VALUE EVALUATION ------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		override protected function _get_start_value() : *
		{
			return _gradient_glow_larva.filter[ _prop ];
		}
	}
}