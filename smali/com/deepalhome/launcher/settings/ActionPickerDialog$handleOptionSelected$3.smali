.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $action:Lcom/deepalhome/launcher/task/model/TaskAction;

.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lcom/deepalhome/launcher/task/model/TaskAction;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;->$action:Lcom/deepalhome/launcher/task/model/TaskAction;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;->$dialog:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->onSelected:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;->$action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$3;->$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
