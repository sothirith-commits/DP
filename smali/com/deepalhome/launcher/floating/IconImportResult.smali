.class public final Lcom/deepalhome/launcher/floating/IconImportResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final failedCount:I

.field private final importedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final skippedCount:I

.field private final successCount:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "importedFiles"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    iput p2, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    iput p3, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    iput-object p4, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/floating/IconImportResult;IIILjava/util/List;ILjava/lang/Object;)Lcom/deepalhome/launcher/floating/IconImportResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/floating/IconImportResult;->copy(IIILjava/util/List;)Lcom/deepalhome/launcher/floating/IconImportResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    return p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    return-object p0
.end method

.method public final copy(IIILjava/util/List;)Lcom/deepalhome/launcher/floating/IconImportResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Lcom/deepalhome/launcher/floating/IconImportResult;"
        }
    .end annotation

    const-string p0, "importedFiles"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/floating/IconImportResult;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/floating/IconImportResult;-><init>(IIILjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/floating/IconImportResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/floating/IconImportResult;

    iget v1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    iget v3, p1, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    iget v3, p1, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    iget v3, p1, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFailedCount()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    return p0
.end method

.method public final getImportedFiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    return-object p0
.end method

.method public final getSkippedCount()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    return p0
.end method

.method public final getSuccessCount()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconImportResult(successCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->successCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->failedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skippedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->skippedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importedFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/IconImportResult;->importedFiles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
