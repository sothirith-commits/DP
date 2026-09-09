.class public final Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $holder:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/deepalhome/launcher/app/AppCenterAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;->$holder:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;

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

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;->$holder:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->onIconClickListener:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
