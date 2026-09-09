.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $backBtn:Landroid/widget/ImageView;

.field final synthetic $currentSubmenu:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic $gridRv:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $titleTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$currentSubmenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$titleTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$backBtn:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$dialog:Landroid/app/AlertDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$currentSubmenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$titleTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$backBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2$onBindViewHolder$1$1;->$dialog:Landroid/app/AlertDialog;

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show$renderOptions(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
