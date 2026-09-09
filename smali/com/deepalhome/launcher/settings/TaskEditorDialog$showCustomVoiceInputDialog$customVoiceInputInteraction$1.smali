.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showCustomVoiceInputDialog$customVoiceInputInteraction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $customVoiceInputEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showCustomVoiceInputDialog$customVoiceInputInteraction$1;->$customVoiceInputEt:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showCustomVoiceInputDialog$customVoiceInputInteraction$1;->$customVoiceInputEt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showCustomVoiceInputDialog$customVoiceInputInteraction$1;->$customVoiceInputEt:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
