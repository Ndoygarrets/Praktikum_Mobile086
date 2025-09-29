# Wireframe Aplikasi Pandhawa Coffee

## Layout Struktur Aplikasi

```
┌─────────────────────────────────────────────┐
│                HEADER AREA                   │
│  ╔═══════════════════════════════════════╗  │
│  ║           BROWN BACKGROUND            ║  │
│  ║  ┌─┐                           ┌─┐   ║  │
│  ║  │<│     Pandhawa Coffee       │ │   ║  │
│  ║  └─┘                           └─┘   ║  │
│  ║                                       ║  │
│  ║  "Dengan tingkat arang yang lemah     ║  │
│  ║   dan akar mentah yang memancur       ║  │
│  ║   hangat, sensasi rasa di Pandhawa    ║  │
│  ║   Coffee terasa sangat memikat..."    ║  │
│  ║                                       ║  │
│  ║  Rasakan perih kemrangon, mencicit    ║  │
│  ║  untuk diirigami oleh lidah yang      ║  │
│  ║  biasa akan rasa.                     ║  │
│  ║                                       ║  │
│  ║  Rasakan barokesi dari kerekutias     ║  │
│  ║  yang mengilik begitu sempuma...      ║  │
│  ╚═══════════════════════════════════════╝  │
└─────────────────────────────────────────────┘
│                                               │
│  ┌─────────────────────────────────────────┐ │
│  │  🔍  Find your best coffee             │ │
│  └─────────────────────────────────────────┘ │
│                                               │
│           CONTENT AREA                        │
│        (Available for expansion)              │
│                                               │
└─────────────────────────────────────────────┘
```

## Komponen Detail

### 1. Header Section (Brown Background)
```
┌─────────────────────────────────────────────┐
│ ┌─┐                                   ┌─┐   │ 
│ │<│        Pandhawa Coffee           │ │   │ <- Navigation Bar
│ └─┘                                   └─┘   │ 
│                                             │
│ ┌─────────────────────────────────────────┐ │
│ │          DESKRIPSI KOPI                 │ │ <- Description Area
│ │  - Paragraf 1: Deskripsi utama kopi    │ │
│ │  - Paragraf 2: Rasakan perih...        │ │
│ │  - Paragraf 3: Rasakan barokesi...     │ │
│ └─────────────────────────────────────────┘ │
└─────────────────────────────────────────────┘
```

### 2. Search Bar Section
```
┌─────────────────────────────────────────────┐
│  ┌─────────────────────────────────────────┐ │
│  │  🔍  Find your best coffee             │ │ <- Search Input
│  └─────────────────────────────────────────┘ │
└─────────────────────────────────────────────┘
```

### 3. Content Area (Expandable)
```
┌─────────────────────────────────────────────┐
│                                             │
│            AREA KONTEN UTAMA                │
│         (Dapat ditambahkan:)                │
│         - Grid menu kopi                    │
│         - Kategori kopi                     │
│         - Promo/Diskon                      │
│         - Footer                            │
│                                             │
└─────────────────────────────────────────────┘
```

## Spesifikasi Desain

### Warna
- **Header Background**: `#8B4513` (Brown)
- **Text on Header**: `#FFFFFF` (White)
- **Search Bar Background**: `#F5F5F5` (Light Grey)
- **Body Background**: `#FFFFFF` (White)

### Typography
- **Title**: Bold, 20px, White
- **Description**: Regular, 14px, White, line-height: 1.5
- **Search Placeholder**: Regular, 16px, Grey

### Layout Measurements
- **Header Padding**: 20px all sides
- **Search Bar Margin**: 20px all sides
- **Border Radius**: 
  - Header bottom: 20px
  - Search bar: 25px
  - Back button: 8px

### Interactive Elements
1. **Back Button**: 
   - Icon: `arrow_back_ios`
   - Background: White with 20% opacity
   - Action: Navigator.pop()

2. **Search Bar**:
   - Icon: Search icon (magnifying glass)
   - Placeholder: "Find your best coffee"
   - Input field for text

## Struktur Widget Flutter

```
Scaffold
├── SingleChildScrollView
    └── Column
        ├── Container (Header - Brown Background)
        │   ├── SafeArea
        │   └── Padding
        │       └── Column
        │           ├── Row (Navigation Bar)
        │           │   ├── IconButton (Back)
        │           │   ├── Text (Title)
        │           │   └── SizedBox (Balance)
        │           └── Text Widgets (Description)
        └── Padding (Search Section)
            └── Container
                └── TextField (Search Bar)
```

## Responsive Considerations

- **Mobile Portrait**: Layout default seperti wireframe di atas
- **Mobile Landscape**: Header tetap proporsional
- **Tablet**: Dapat menambahkan margin kiri/kanan
- **Desktop**: Center content dengan max-width

## Future Expansions

Area yang dapat ditambahkan di bawah search bar:
1. **Category Tabs**: Hot Coffee, Iced Coffee, Snacks
2. **Product Grid**: Cards dengan gambar, nama, harga
3. **Featured Products**: Carousel produk unggulan
4. **Footer**: Info kontak, social media
5. **Navigation Bar**: Bottom navigation untuk multiple pages