.class public final Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $dragOwnerView:Landroid/view/View;

.field final synthetic $holder:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;->$holder:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;->$dragOwnerView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;->$holder:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-object v0, v0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->onIconLongClickListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;->$dragOwnerView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0
.end method
