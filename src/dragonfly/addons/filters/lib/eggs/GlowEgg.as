package dragonfly.addons.filters.lib.eggs 
{
	import dragonfly.addons.filters.lib.GlowLarva;
	import dragonfly.core.Egg;

	
	
	/**
	 * @author nybras | nybras@codeine.it
	 */
	public class GlowEgg extends Egg 
	{
		/* ----- FILTER PROPERTIES (tweenable) ------------------------------ */
		public static const COLOR : String = "color";
		public static const ALPHA : String = "alpha";
		public static const BLUR_X : String = "blurX";
		public static const BLUR_Y : String = "blurY";
		public static const STRENGTH : String = "strength";

		
		
		/* ----- INITIALIZING ----------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		override public function init() : void
		{
			_prop_target = _glow_larva.filter;
		}

		/* ----- GETTER / CASTER -------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		private function get _glow_larva() : GlowLarva
		{
			return GlowLarva( _larva );
		}

		/* ----- RENDERING -------------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		public function render( prop : String, value : * ) : void
		{
			_glow_larva.filter[ prop ] = value;
			_glow_larva.close.refresh( );
		}

		/* ----- START VALUE EVALUATION ------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		override protected function _get_start_value( prop : String ) : *
		{
			return _glow_larva.filter[ prop ];
		}
	}
}
