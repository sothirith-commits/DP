.class public final Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;
.super Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final tvDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;I)V
    .locals 0

    iput p3, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    const p2, 0x7f0b0644

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->tvDuration:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    const p2, 0x7f0b0644

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->tvDuration:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    iget-wide p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    iget-wide p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public loadCover$1()V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->loadCover$1()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
