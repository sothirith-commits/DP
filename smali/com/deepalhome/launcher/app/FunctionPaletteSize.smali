.class public final Lcom/deepalhome/launcher/app/FunctionPaletteSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final columns:I

.field public final rowCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/app/FunctionPaletteSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/app/FunctionPaletteSize$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    iput p3, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    iget v1, p1, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    iget v3, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    iget p1, p1, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FunctionPaletteSize(columns="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->columns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rows=1, rowCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->rowCapacity:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
