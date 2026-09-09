.class public final Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Ljava/util/List;

.field public static final Companion:Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset$Companion;


# instance fields
.field public final height:I

.field public final key:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->Companion:Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset$Companion;

    new-instance v2, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    const/4 v0, 0x1

    invoke-direct {v2, v0, v0}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v3, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    const/4 v1, 0x2

    invoke-direct {v3, v1, v0}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v4, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v6, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    invoke-direct {v6, v0, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v7, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    invoke-direct {v7, v1, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v8, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    invoke-direct {v8, v5, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v9, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    invoke-direct {v9, v0, v5}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    invoke-direct {v0, v1, v5}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    new-instance v10, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    invoke-direct {v10, v5, v5}, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;-><init>(II)V

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    filled-new-array/range {v2 .. v10}, [Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    iput p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->key:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    iget v1, p1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    iget v3, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    iget p1, p1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWidgetSizePreset(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
