/* -----------------------------------------------------------------------------
Dragonfly - ActionScript Animation Suite. Copyright (C) 2010 Codeine.
--------------------------------------------------------------------------------
   
This library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published
by the Free Software Foundation; either version 2.1 of the License, or
(at your option) any later version.
		
This library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this library; if not, write to the Free Software Foundation,
Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

===================
Codeine
http://codeine.it
contact@codeine.it
===================

----------------------------------------------------------------------------- */

package dragonfly.addons.filters.lib 
{
	import dragonfly.addons.filters.lib.eggs.GradientBevelEgg;

	import flash.filters.GradientBevelFilter;

	/**
	 * @author nybras | nybras@codeine.it
	 */
	public class GradientBevelLarva extends BaseFilterLarva 
	{
		/* ----- VARIABLES -------------------------------------------------- */
		private var _filter : GradientBevelFilter;

		/* ----- INITIALIZING ----------------------------------------------- */
		
		/**
		 * TODO: write documentation
		 */
		public function GradientBevelLarva( target : * )
		{
			super( target );
			_filter = new GradientBevelFilter( 0, 0, [ 0x000000 ], [ 0 ], [], 0, 0, 0, 0 );
		}

		/* ----- FILTER GETTER ---------------------------------------------- */

		/**
		 * TODO: write documentation
		 */
		public function get filter() : GradientBevelFilter
		{
			return _filter;
		}

		/* ----- CONFIGURATION VALUES --------------------------------------- */
		public function conf(
			colors : Array,
			alphas : Array,
			ratios : Array,
			type : String,
			knockout : Boolean,
			quality : int
		) : GradientBevelLarva
		{
			_filter.colors = colors;
			_filter.alphas = alphas;
			_filter.ratios = ratios;
			_filter.type = type;
			_filter.knockout = knockout;
			_filter.quality = quality;
			return this;
		}

		/* ----- ANIMATIONS ------------------------------------------------- */
		public function distance(
			end : Number,
			start : Number = undefined
		) : GradientBevelLarva
		{
			_lay( GradientBevelEgg, GradientBevelEgg.DISTANCE, end, start );
			return this;
		}

		public function angle(
			end : Number,
			start : Number = undefined
		) : GradientBevelLarva
		{
			_lay( GradientBevelEgg, GradientBevelEgg.ANGLE, end, start );
			return this;
		}

		public function blur_x(
			end : Number,
			start : Number = undefined
		) : GradientBevelLarva
		{
			_lay( GradientBevelEgg, GradientBevelEgg.BLUR_X, end, start );
			return this;
		}

		public function blur_y(
			end : Number,
			start : Number = undefined
		) : GradientBevelLarva
		{
			_lay( GradientBevelEgg, GradientBevelEgg.BLUR_Y, end, start );
			return this;
		}

		public function blur_xy(
			end_x : Number,
			end_y : Number,
			start_x : Number = undefined,
			start_y : Number = undefined
		) : GradientBevelLarva
		{
			blur_x( end_x, start_x );
			blur_y( end_y, start_y );
			return this;
		}

		public function strength(
			end : Number,
			start : Number = undefined
		) : GradientBevelLarva
		{
			_lay( GradientBevelEgg, GradientBevelEgg.STRENGTH, end, start );
			return this;
		}
	}
}