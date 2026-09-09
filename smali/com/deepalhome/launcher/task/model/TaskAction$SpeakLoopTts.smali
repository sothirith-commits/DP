.class public final Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;
.super Lcom/deepalhome/launcher/task/model/TaskAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeakLoopTts"
.end annotation


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "text"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Outside vehicle loop announcement"

    const/4 v1, 0x0

    const-string v2, "speak_loop_tts"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->copy(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;
    .locals 0

    const-string p0, "text"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeakLoopTts(text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->text:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
