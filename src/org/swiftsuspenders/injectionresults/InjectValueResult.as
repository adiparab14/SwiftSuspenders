/*
* Copyright (c) 2009 the original author or authors
* 
* Permission is hereby granted to use, modify, and distribute this file 
* in accordance with the terms of the license agreement accompanying it.
*/

package org.swiftsuspenders.injectionresults
{
	import org.swiftsuspenders.Injector;
	
	public class InjectValueResult implements IInjectionResult
	{
		/*******************************************************************************************
		 *								private properties										   *
		 *******************************************************************************************/
		private var m_value : Object
		private var m_injector : Injector;
		
		
		/*******************************************************************************************
		 *								public methods											   *
		 *******************************************************************************************/
		public function InjectValueResult(value : Object, injector : Injector)
		{
			m_value = value;
			m_injector = injector;
		}
		
		public function getResponse() : Object
		{
			m_injector.injectInto(m_value);
			return m_value;
		}
	}
}