.class public Lcom/xiaomi/account/data/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ld:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/account/data/d;->ld:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/account/data/d;->ld:I

    return-void
.end method


# virtual methods
.method public lP()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/account/data/d;->ld:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lQ()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/account/data/d;->ld:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0c0096

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c008a

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c0093

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0c0095

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0c008c

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0c010d

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0c008e

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0c0126

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0c0127

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0c012a

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0c012c

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0c008d

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0c0135

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0c008f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public lR()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/account/data/d;->ld:I

    return v0
.end method
