.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentActionSubmenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->loadActionGrid()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
