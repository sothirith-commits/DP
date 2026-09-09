.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;
.super Lcom/deepalhome/launcher/task/model/TaskTrigger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomVoice"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Custom voice command"

    const/4 v1, 0x0

    const-string v2, "custom_voice"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->copy(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;
    .locals 0

    const-string p0, "value"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->getPickerDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->getPickerDisplayName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getPickerDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "Custom voice command"

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final matchesQuery(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "query"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomVoice(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->value:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
