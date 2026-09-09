.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final isNight:Z

.field public final onToggle:Lkotlin/jvm/functions/Function2;

.field public services:Ljava/util/List;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Ljava/util/ArrayList;ZLcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->services:Ljava/util/List;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->isNight:Z

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->onToggle:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->services:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    check-cast p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->services:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->isNight:Z

    if-eqz v2, :cond_0

    const v3, 0x7f06038c

    goto :goto_0

    :cond_0
    const v3, 0x7f06038b

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_1

    const v2, 0x7f06038a

    goto :goto_1

    :cond_1
    const v2, 0x7f060389

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;->binding:Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->nameTv:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p2, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v0, v3, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p2, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->serviceSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p2, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->isEnabled:Z

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;)V

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p0, "parent"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 p2, 0x0

    const v0, 0x7f0e006e

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;)V

    return-object p1
.end method
