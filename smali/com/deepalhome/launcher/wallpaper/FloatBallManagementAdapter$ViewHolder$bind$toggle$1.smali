.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $item:Lcom/deepalhome/launcher/floating/CachedIcon;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;


# direct methods
.method public constructor <init>(ILcom/deepalhome/launcher/floating/CachedIcon;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;)V
    .locals 0

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->$item:Lcom/deepalhome/launcher/floating/CachedIcon;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->$item:Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->$item:Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$ViewHolder$bind$toggle$1;->$position:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
