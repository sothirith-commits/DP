.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda13;->f$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string p4, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda13;->f$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {p2, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p2

    :cond_2
    :goto_0
    return-object p0
.end method
