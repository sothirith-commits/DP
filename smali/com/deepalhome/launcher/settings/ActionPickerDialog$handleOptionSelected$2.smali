.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    const-string v0, "selectedApp"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->onSelected:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
