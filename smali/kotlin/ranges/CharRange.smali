.class public final Lkotlin/ranges/CharRange;
.super Lkotlin/ranges/CharProgression;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/ranges/CharRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/CharRange$Companion;-><init>(I)V

    new-instance v0, Lkotlin/ranges/CharRange;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lkotlin/ranges/CharRange;

    if-eqz v0, :cond_1

    iget-char v0, p0, Lkotlin/ranges/CharProgression;->first:C

    iget-char p0, p0, Lkotlin/ranges/CharProgression;->last:C

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lkotlin/ranges/CharRange;

    iget-char v2, v1, Lkotlin/ranges/CharProgression;->first:C

    iget-char v1, v1, Lkotlin/ranges/CharProgression;->last:C

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/ranges/CharRange;

    iget-char v1, p1, Lkotlin/ranges/CharProgression;->first:C

    if-ne v0, v1, :cond_1

    iget-char p1, p1, Lkotlin/ranges/CharProgression;->last:C

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-char v0, p0, Lkotlin/ranges/CharProgression;->first:C

    iget-char p0, p0, Lkotlin/ranges/CharProgression;->last:C

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lkotlin/ranges/CharProgression;->first:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lkotlin/ranges/CharProgression;->last:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
