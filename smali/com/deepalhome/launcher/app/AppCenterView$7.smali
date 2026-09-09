.class public final Lcom/deepalhome/launcher/app/AppCenterView$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$7;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    check-cast p2, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "type"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$7;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->access$enterEditModeAndStartFunctionDrag(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
