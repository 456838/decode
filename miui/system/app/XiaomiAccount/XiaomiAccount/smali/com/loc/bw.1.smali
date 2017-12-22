.class public Lcom/loc/bw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public aqQ:I

.field public aqR:I

.field public aqS:I

.field public aqT:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public g:I

.field public j:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/bw;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    iput v1, p0, Lcom/loc/bw;->c:I

    iput v1, p0, Lcom/loc/bw;->d:I

    iput v1, p0, Lcom/loc/bw;->e:I

    iput v1, p0, Lcom/loc/bw;->aqQ:I

    iput v1, p0, Lcom/loc/bw;->g:I

    iput v1, p0, Lcom/loc/bw;->aqR:I

    iput v1, p0, Lcom/loc/bw;->aqS:I

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/bw;->j:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/bw;->aqT:I

    iput p1, p0, Lcom/loc/bw;->aqT:I

    return-void
.end method


# virtual methods
.method public aDT(Lcom/loc/bw;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/loc/bw;->aqT:I

    packed-switch v0, :pswitch_data_0

    return v2

    :cond_0
    return v2

    :pswitch_0
    iget v0, p0, Lcom/loc/bw;->aqT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/loc/bw;->aqS:I

    iget v1, p0, Lcom/loc/bw;->aqS:I

    if-eq v0, v1, :cond_3

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    iget v0, p1, Lcom/loc/bw;->aqR:I

    iget v1, p0, Lcom/loc/bw;->aqR:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/loc/bw;->g:I

    iget v1, p0, Lcom/loc/bw;->g:I

    if-ne v0, v1, :cond_1

    return v3

    :pswitch_1
    iget v0, p0, Lcom/loc/bw;->aqT:I

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/loc/bw;->c:I

    iget v1, p0, Lcom/loc/bw;->c:I

    if-eq v0, v1, :cond_6

    :cond_4
    return v2

    :cond_5
    return v2

    :cond_6
    iget v0, p1, Lcom/loc/bw;->d:I

    iget v1, p0, Lcom/loc/bw;->d:I

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/loc/bw;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/loc/bw;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "unknown"

    iget v1, p0, Lcom/loc/bw;->aqT:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "CDMA bid=%d, nid=%d, sid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/loc/bw;->aqS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/loc/bw;->aqR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/loc/bw;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "GSM lac=%d, cid=%d, mnc=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/loc/bw;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/loc/bw;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
