.class public final Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $gridSpan$inlined:I

.field public final synthetic $holder$inlined:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

.field public final synthetic $intrinsicWidth$inlined:I

.field public final synthetic $position$inlined:I

.field public final synthetic $previewHeight$inlined:I

.field public final synthetic $previewView$inlined:Landroid/view/View;

.field public final synthetic $r8$classId:I

.field public final synthetic $type$inlined:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public final synthetic this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILandroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;IIII)V
    .locals 0

    iput p9, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$holder$inlined:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iput p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$position$inlined:I

    iput-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$previewView$inlined:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$type$inlined:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p5, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iput p6, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$intrinsicWidth$inlined:I

    iput p7, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$gridSpan$inlined:I

    iput p8, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$previewHeight$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$holder$inlined:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$position$inlined:I

    if-ne p1, p2, :cond_1

    iget-object p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$holder$inlined:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p1, p4, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    iget-object p5, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$previewView$inlined:Landroid/view/View;

    if-ne p1, p5, :cond_1

    iget-object p1, p4, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object p6, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$type$inlined:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p1, p6, :cond_0

    goto :goto_0

    :cond_0
    iget p8, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$gridSpan$inlined:I

    iget p9, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$previewHeight$inlined:I

    iget-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget p7, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$intrinsicWidth$inlined:I

    invoke-static/range {p3 .. p9}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$holder$inlined:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$position$inlined:I

    if-ne p1, p2, :cond_3

    iget-object p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$holder$inlined:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget-object p1, p4, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundView:Landroid/view/View;

    iget-object p5, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$previewView$inlined:Landroid/view/View;

    if-ne p1, p5, :cond_3

    iget-object p1, p4, Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;->boundType:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object p6, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$type$inlined:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p1, p6, :cond_2

    goto :goto_1

    :cond_2
    iget p8, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$gridSpan$inlined:I

    iget p9, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$previewHeight$inlined:I

    iget-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget p7, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$onBindViewHolder$$inlined$doOnLayout$1;->$intrinsicWidth$inlined:I

    invoke-static/range {p3 .. p9}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$refitBoundPreview(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItemType;III)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
