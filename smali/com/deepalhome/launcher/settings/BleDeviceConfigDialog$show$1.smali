.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$show$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$show$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
