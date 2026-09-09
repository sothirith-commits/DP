.class public final enum Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

.field public static final enum ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

.field public static final enum ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

.field public static final enum DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

.field public static final enum TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    new-instance v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    const-string v2, "DISPLAY_TITLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->DISPLAY_TITLE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    new-instance v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    const-string v3, "ARTIST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    new-instance v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    const-string v4, "ALBUM_ARTIST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->ALBUM_ARTIST:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->$VALUES:[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;->$VALUES:[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    return-object v0
.end method
