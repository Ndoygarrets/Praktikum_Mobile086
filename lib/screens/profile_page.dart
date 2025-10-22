import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class ProfilePage extends StatelessWidget {
	const ProfilePage({super.key});

		@override
		Widget build(BuildContext context) {
			return Scaffold(
				backgroundColor: Colors.white,
				body: SafeArea(
					child: Padding(
						padding: const EdgeInsets.symmetric(horizontal: 24.0),
						child: Column(
							children: [
								const SizedBox(height: 32),
								Center(
									child: Stack(
										children: [
											CircleAvatar(
												radius: 50,
												backgroundImage: AssetImage('assets/profile_photo.jpg'),
											),
											Positioned(
												bottom: 0,
												right: 0,
												child: Container(
													decoration: BoxDecoration(
														color: Color(0xFF6B4F27),
														shape: BoxShape.circle,
													),
													padding: const EdgeInsets.all(6),
													child: const Icon(Icons.edit, color: Colors.white, size: 18),
												),
											),
										],
									),
								),
								const SizedBox(height: 16),
								const Text('Albert Florest', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Color(0xFF6B4F27))),
								const SizedBox(height: 4),
								const Text('Buyer', style: TextStyle(color: Colors.grey, fontSize: 16)),
								const SizedBox(height: 32),
								_ProfileMenuItem(icon: Icons.person, label: 'Edit Profile'),
								_ProfileMenuItem(icon: Icons.notifications, label: 'Notification'),
								_ProfileMenuItem(icon: Icons.location_on, label: 'Shipping Address'),
								_ProfileMenuItem(icon: Icons.lock, label: 'Change Password'),
								const Spacer(),
												SizedBox(
													width: double.infinity,
													child: ElevatedButton.icon(
														style: ElevatedButton.styleFrom(
															backgroundColor: Color(0xFF6B4F27),
															shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
															padding: const EdgeInsets.symmetric(vertical: 16),
														),
														onPressed: () {
															Navigator.pushAndRemoveUntil(
																context,
																MaterialPageRoute(builder: (_) => const SignInPage()),
																(route) => false,
															);
														},
														icon: const Icon(Icons.logout, color: Colors.white),
														label: const Text('Sign Out', style: TextStyle(color: Colors.white, fontSize: 16)),
													),
												),
								const SizedBox(height: 24),
							],
						),
					),
				),
				bottomNavigationBar: BottomNavigationBar(
					items: const [
						BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
						BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
						BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
					],
					currentIndex: 2,
					selectedItemColor: Color(0xFF6B4F27),
					unselectedItemColor: Colors.grey,
					onTap: (index) {
						if (index == 0) {
							Navigator.pop(context);
						}
						// You can add navigation for Menu if needed
					},
				),
			);
		}
}

class _ProfileMenuItem extends StatelessWidget {
	final IconData icon;
	final String label;
	const _ProfileMenuItem({required this.icon, required this.label});

	@override
	Widget build(BuildContext context) {
		return Padding(
			padding: const EdgeInsets.symmetric(vertical: 8.0),
			child: InkWell(
				onTap: () {},
				child: Row(
					children: [
						Container(
							decoration: BoxDecoration(
								color: Color(0xFFEDE6DE),
								borderRadius: BorderRadius.circular(10),
							),
							padding: const EdgeInsets.all(10),
							child: Icon(icon, color: Color(0xFF6B4F27)),
						),
						const SizedBox(width: 16),
						Expanded(
							child: Text(label, style: const TextStyle(fontSize: 16, color: Color(0xFF6B4F27))),
						),
						const Icon(Icons.chevron_right, color: Colors.grey),
					],
				),
			),
		);
	}
}
