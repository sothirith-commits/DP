.class public final enum Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

.field public static final enum BOTTOM:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

.field public static final enum TOP:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;->TOP:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    new-instance v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    const-string v3, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;->BOTTOM:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    filled-new-array {v0, v1, v2}, [Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;->$VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;->$VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/VolumePopupWindow$VerticalEdge;

    return-object v0
.end method
