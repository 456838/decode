.class final Lcom/xiaomi/account/ui/aZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/p",
        "<",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic fX:[I


# instance fields
.field final synthetic fU:Lcom/xiaomi/account/ui/r;

.field final synthetic fV:Z

.field final synthetic fW:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aZ;->fU:Lcom/xiaomi/account/ui/r;

    iput-boolean p2, p0, Lcom/xiaomi/account/ui/aZ;->fV:Z

    iput-object p3, p0, Lcom/xiaomi/account/ui/aZ;->fW:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic iK()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/ui/aZ;->fX:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/ui/aZ;->fX:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->values()[Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jo:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jq:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->js:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jv:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/xiaomi/account/ui/aZ;->fX:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic iH(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/aZ;->iJ(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V

    return-void
.end method

.method public iJ(Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/aZ;->fU:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aZ;->fU:Lcom/xiaomi/account/ui/r;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/aZ;->fU:Lcom/xiaomi/account/ui/r;

    invoke-static {v0}, Lcom/xiaomi/account/ui/r;->ch(Lcom/xiaomi/account/ui/r;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/aZ;->fU:Lcom/xiaomi/account/ui/r;

    invoke-static {v0}, Lcom/xiaomi/account/ui/r;->ch(Lcom/xiaomi/account/ui/r;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/aZ;->fV:Z

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/xiaomi/account/ui/aZ;->iK()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ko()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aZ;->fW:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->kp()I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    :pswitch_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/aZ;->fV:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/aZ;->fU:Lcom/xiaomi/account/ui/r;

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/aZ;->fV:Z

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/r;->cj(Lcom/xiaomi/account/ui/r;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
