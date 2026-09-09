.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $option:Lcom/deepalhome/launcher/settings/ActionPickerOption;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/settings/ActionPickerOption;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;->$option:Lcom/deepalhome/launcher/settings/ActionPickerOption;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;->$option:Lcom/deepalhome/launcher/settings/ActionPickerOption;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->access$handleActionOptionSelected(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/settings/ActionPickerOption;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
