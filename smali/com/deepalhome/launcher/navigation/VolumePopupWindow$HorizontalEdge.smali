.class public final enum Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

.field public static final enum CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

.field public static final enum END:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;->CENTER:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    new-instance v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;->END:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    filled-new-array {v0, v1, v2}, [Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;->$VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;->$VALUES:[Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/VolumePopupWindow$HorizontalEdge;

    return-object v0
.end method
