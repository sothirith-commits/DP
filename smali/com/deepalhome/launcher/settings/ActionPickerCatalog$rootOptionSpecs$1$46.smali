.class public final Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$46;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $isS05:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$46;->$isS05:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$46;->$isS05:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
