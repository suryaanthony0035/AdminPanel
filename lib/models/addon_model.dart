class AddonModel {
  final String title, description, price, addon;
  AddonModel(
      {required this.addon,
      required this.description,
      required this.price,
      required this.title});
}

List addonlist = [
  AddonModel(
    addon: "Location4",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "4",
    title: "Location",
  ),
  AddonModel(
    addon: "Advertisement2",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "10",
    title: "Advertisement",
  ),
  AddonModel(
    addon: "PrimaryContac 5",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "14",
    title: "PrimaryContact",
  ),
  AddonModel(
    addon: "SecondaryContact 2",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "16",
    title: "SecondaryContact",
  ),
  AddonModel(
    addon: "Category6",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "15",
    title: "Category",
  ),
  AddonModel(
    addon: "CustomTiming8",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "40",
    title: "Custom Timing",
  ),
  AddonModel(
    addon: "PageSection5",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "20",
    title: "Page Section",
  ),
  AddonModel(
    addon: "Deals10",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    price: "50",
    title: "Deals",
  ),
];
