.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $onSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lcom/deepalhome/launcher/settings/ActionPickerDialog$handleOptionSelected$2;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->$onSelected:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "apps"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0b0437

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b00a9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b0436

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/cardview/widget/CardView;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget v5, v5, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->bgColor:I

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget v4, v4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget v2, v2, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object v4, v4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object v3, v3, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/app/App;

    sget-object v6, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/deepalhome/launcher/util/AppUtil;->APP_PICKER_BLACKLIST:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1;->$onSelected:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v3, v2, p0, v0}, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;-><init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
