.class public final Lcom/deepalhome/launcher/window/WindowInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/window/WindowInfo$Companion;

.field public static final SIZE_MAX:I = 0x3

.field public static final SIZE_MED:I = 0x2

.field public static final SIZE_MIN:I = 0x1


# instance fields
.field private final appPackageName:Ljava/lang/String;

.field private position:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/window/WindowInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/window/WindowInfo$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/window/WindowInfo;->Companion:Lcom/deepalhome/launcher/window/WindowInfo$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const-string v0, "appPackageName"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/window/WindowInfo;ILjava/lang/String;IILjava/lang/Object;)Lcom/deepalhome/launcher/window/WindowInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/window/WindowInfo;->copy(ILjava/lang/String;I)Lcom/deepalhome/launcher/window/WindowInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    return p0
.end method

.method public final copy(ILjava/lang/String;I)Lcom/deepalhome/launcher/window/WindowInfo;
    .locals 0

    const-string p0, "appPackageName"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/window/WindowInfo;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/window/WindowInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/window/WindowInfo;

    iget v1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    iget v3, p1, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    iget p1, p1, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInfo(position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowInfo;->size:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
