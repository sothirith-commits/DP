.class public final enum Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

.field public static final enum COMPOSITE_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

.field public static final enum CREDIT_LINE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

.field public static final enum EMPTY:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

.field public static final enum LYRIC_LIKE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

.field public static final enum PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->EMPTY:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    new-instance v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    const-string v2, "PLAIN_TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    new-instance v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    const-string v3, "COMPOSITE_TEXT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->COMPOSITE_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    new-instance v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    const-string v4, "CREDIT_LINE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->CREDIT_LINE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    new-instance v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    const-string v5, "LYRIC_LIKE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->LYRIC_LIKE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    new-instance v5, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v5}, [Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->$VALUES:[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->$VALUES:[Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    return-object v0
.end method
