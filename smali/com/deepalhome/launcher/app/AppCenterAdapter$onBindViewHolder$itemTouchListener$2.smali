.class public final Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $dragOwnerView:Landroid/view/View;

.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;->$dragOwnerView:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;->this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;->$dragOwnerView:Landroid/view/View;

    invoke-static {v0, p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterAdapter;->access$dispatchTouchToDragOwner(Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
