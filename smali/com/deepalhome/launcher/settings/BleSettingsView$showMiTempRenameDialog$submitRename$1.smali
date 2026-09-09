.class public final Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $device:Lcom/deepalhome/mitemp/MiTempDevice;

.field final synthetic $dialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $input:Landroidx/appcompat/widget/AppCompatEditText;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BleSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/mitemp/MiTempDevice;Lcom/deepalhome/launcher/settings/BleSettingsView;Landroidx/appcompat/widget/AppCompatEditText;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->$device:Lcom/deepalhome/mitemp/MiTempDevice;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->this$0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->$input:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->$device:Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v2, v1, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->this$0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->$input:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    sget v6, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    :goto_2
    move-object v3, v5

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "address"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_6

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    move-object v5, v0

    :cond_6
    new-instance v0, Lcom/deepalhome/mitemp/MiTemp$renameDevice$1;

    invoke-direct {v0, v5}, Lcom/deepalhome/mitemp/MiTemp$renameDevice$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/deepalhome/mitemp/MiTemp;->updateDevice(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
