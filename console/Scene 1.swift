
		/*
		
		private static func currentAmount(global_instance: GlobalVars) -> Int {
			return global_instance.current_money
		}
	
		/** Amount of $ you need before the button2 will show - IA */

		private static func amountNeeded(global_vars: GlobalVars) -> Int {
			let amount_needed = ˛global_vars.objects.config.button_amount_need
			let current_amount = global_vars.current_money
			return amount_needed - current_amount
		}
		
		/** Says "Keep Scoring!" with current amount of $ left before you can cash out - IA*/

		let button1: ButtonNode
		private static func makeButton1(this_amount_needed: Int) -> ButtonNode {
			let the_text = "Keep Scoring! \(this_amount_needed) left"
			return (
				ButtonNode( on_click: {print("You need more $")},
					text: the_text,
					node: SKLabelNode(text: the_text))
			)
		}
	
		/** "Cash Out" with current amount of $ - IA */

		let button2: ButtonNode
		private static func makeButton2(g_current_money: Int) -> ButtonNode {
			let the_text = "Cash Out \(g_current_money)"
			return (
				ButtonNode( on_click: {print("You can stop now or keep scoring...")},
					text: the_text,
					node: SKLabelNode(text: the_text))
			)
			
		}
		
	// MARK: Initializer:
	
		/** Uses Globals!!! butter# is used to init the nodes in init body.. */

		private init(butter1: ButtonNode = this.makeButton1(this.amountNeeded(gv)),
								 
		             ADJUST FOR NEW CONFIG FILE #
		             
		             butter2: ButtonNode = this.makeButton2(grabAGlobe(g!).current_money)) {
			button1 = butter1
			button2 = butter2
		}
	
	}
*/