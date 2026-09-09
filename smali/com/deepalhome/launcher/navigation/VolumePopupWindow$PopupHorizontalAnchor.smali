.class public final enum Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public static final enum AUTO:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public static final enum CONTAINER_CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public static final enum CONTAINER_END:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public static final enum CONTAINER_START:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

.field public static final enum MAIN_CONTROL_CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->AUTO:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    new-instance v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v2, "CONTAINER_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->CONTAINER_START:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    new-instance v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v3, "CONTAINER_CENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->CONTAINER_CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    new-instance v3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v4, "CONTAINER_END"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->CONTAINER_END:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    new-instance v4, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v5, "MAIN_CONTROL_START"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v6, "MAIN_CONTROL_CENTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->MAIN_CONTROL_CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    new-instance v6, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    const-string v7, "MAIN_CONTROL_END"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->$VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;->$VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/VolumePopupWindow$PopupHorizontalAnchor;

    return-object v0
.end method
