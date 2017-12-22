.class final Lcom/xiaomi/passport/widget/w;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic yX:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/w;->yX:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/w;->yX:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AL(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/w;->yX:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AL(Lcom/xiaomi/passport/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
