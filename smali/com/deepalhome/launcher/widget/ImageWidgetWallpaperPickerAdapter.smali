.class public final Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final items:Ljava/util/List;

.field public final onSelected:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->onSelected:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->$r8$classId:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->onSelected:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->iconRes:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->onSelected:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iget-boolean v2, p2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->tintIcon:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    iget-object v0, p2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v0, 0xf

    invoke-direct {p1, v0, p2}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->items:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;

    const-string p2, "item"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;->binding:Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;

    iget-object v0, p2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f060026

    goto :goto_1

    :cond_1
    const v2, 0x7f060023

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz v1, :cond_2

    const v3, 0x7f06038c

    goto :goto_2

    :cond_2
    const v3, 0x7f06038b

    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v1, :cond_3

    const v1, 0x7f06038a

    goto :goto_3

    :cond_3
    const v1, 0x7f060389

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->cardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    iget-object v1, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->sourceTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->coverIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    const v4, 0x7f080231

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;->sourceLabel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p1, p0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p2, 0x0

    const-string v0, "parent"

    iget v1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->onSelected:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e001f

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2$onCreateViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;->$r8$clinit:I

    sget-object v2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v2, 0x0

    const v3, 0x7f0e0069

    invoke-static {v1, v3, p1, p2, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;Lcom/deepalhome/launcher/databinding/ImageWidgetPickerItemBinding;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
