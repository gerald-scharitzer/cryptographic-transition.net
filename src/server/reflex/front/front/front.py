"""reflex app"""

import reflex as rx

from rxconfig import config

class State(rx.State):
	"""app state"""
	name: str = "Reflex"

	@rx.event
	def set_name(self, value: str):
		self.name = value

def index() -> rx.Component:
	# Welcome Page (Index)
	return rx.container(
		rx.color_mode.button(position="top-right"),
		rx.vstack(
			rx.heading(f"{config.app_name}"),
			rx.text(State.name),
			rx.input(placeholder="The new value", on_blur=State.set_name),
			rx.button("Set", on_click=lambda: State.set_name("true")),
			spacing="5",
			justify="center",
			min_height="85vh",
		),
	)

app = rx.App()
app.add_page(index)
