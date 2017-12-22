.class public Lcom/loc/aX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private apN:Landroid/content/Context;

.field private apO:Lcom/loc/k;

.field private apP:Landroid/content/ServiceConnection;

.field private apQ:Landroid/content/ServiceConnection;

.field private apR:Landroid/content/Intent;

.field private apS:Z

.field apT:Lcom/loc/bG;

.field private b:Ljava/lang/String;

.field private d:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/aX;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aX;->d:Z

    iput-object v1, p0, Lcom/loc/aX;->apO:Lcom/loc/k;

    iput-object v1, p0, Lcom/loc/aX;->apP:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/loc/aX;->apQ:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/loc/aX;->apR:Landroid/content/Intent;

    const-string/jumbo v0, "com.autonavi.minimap"

    iput-object v0, p0, Lcom/loc/aX;->i:Ljava/lang/String;

    const-string/jumbo v0, "com.amap.api.service.AMapService"

    iput-object v0, p0, Lcom/loc/aX;->j:Ljava/lang/String;

    const-string/jumbo v0, "com.autonavi.minimap.LBSConnectionService"

    iput-object v0, p0, Lcom/loc/aX;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/aX;->l:Z

    iput-boolean v2, p0, Lcom/loc/aX;->apS:Z

    iput-object v1, p0, Lcom/loc/aX;->apT:Lcom/loc/bG;

    const-string/jumbo v0, "invaid type"

    iput-object v0, p0, Lcom/loc/aX;->n:Ljava/lang/String;

    const-string/jumbo v0, "empty appkey"

    iput-object v0, p0, Lcom/loc/aX;->o:Ljava/lang/String;

    const-string/jumbo v0, "refused"

    iput-object v0, p0, Lcom/loc/aX;->p:Ljava/lang/String;

    const-string/jumbo v0, "failed"

    iput-object v0, p0, Lcom/loc/aX;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/loc/bO;->aEV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v1}, Lcom/loc/bJ;->aEE([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aP;->aAQ([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aX;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "ConnectionServiceManager"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private aCG(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    move-object v0, v1

    :goto_1
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    return-object v1

    :cond_2
    const-string/jumbo v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aP;->b(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v2}, Lcom/loc/bJ;->aEF([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConnectionServiceManager"

    const-string/jumbo v3, "parseData part"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/aP;->b(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_1
    invoke-static {v0, v2}, Lcom/loc/bJ;->aEK([B[B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "lbs"

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    const-string/jumbo v0, "WGS84"

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    :goto_3
    return-object v2

    :cond_5
    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/aX;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_4
    iget-object v2, p0, Lcom/loc/aX;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_5
    iget-object v2, p0, Lcom/loc/aX;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_6
    iget-object v2, p0, Lcom/loc/aX;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_6
    return-object v1

    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/aX;->d:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-class v2, Lcom/loc/aX;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "parseData"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/loc/aX;->d:Z

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/aX;->d:Z

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/aH;->aAm(DD)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/loc/ap;->ayz(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method static synthetic aCH(Lcom/loc/aX;Lcom/loc/k;)Lcom/loc/k;
    .locals 0

    iput-object p1, p0, Lcom/loc/aX;->apO:Lcom/loc/k;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/loc/aX;->c()V

    iput-object v0, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/aX;->apO:Lcom/loc/k;

    iput-object v0, p0, Lcom/loc/aX;->apP:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/loc/aX;->apQ:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/aX;->apT:Lcom/loc/bG;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aX;->d:Z

    iput-boolean v2, p0, Lcom/loc/aX;->l:Z

    iput-boolean v2, p0, Lcom/loc/aX;->apS:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/aX;->apT:Lcom/loc/bG;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/loc/bG;->a(I)V

    goto :goto_0
.end method

.method public aCF(Lcom/loc/bG;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/loc/aX;->apT:Lcom/loc/bG;

    iget-object v0, p0, Lcom/loc/aX;->apP:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aX;->apQ:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/loc/aZ;

    invoke-direct {v0, p0, p1}, Lcom/loc/aZ;-><init>(Lcom/loc/aX;Lcom/loc/bG;)V

    iput-object v0, p0, Lcom/loc/aX;->apP:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Lcom/loc/cg;

    invoke-direct {v0, p0}, Lcom/loc/cg;-><init>(Lcom/loc/aX;)V

    iput-object v0, p0, Lcom/loc/aX;->apQ:Landroid/content/ServiceConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/bv;->p()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {}, Lcom/loc/bv;->q()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iget-boolean v2, p0, Lcom/loc/aX;->l:Z

    if-nez v2, :cond_3

    :goto_2
    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/loc/aX;->apR:Landroid/content/Intent;

    const-string/jumbo v3, "appkey"

    iget-object v4, p0, Lcom/loc/aX;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/loc/aX;->apR:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/aX;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aX;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/aX;->apR:Landroid/content/Intent;

    iget-object v4, p0, Lcom/loc/aX;->apP:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/aX;->l:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConnectionServiceManager"

    const-string/jumbo v3, "bindService"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "appkey"

    iget-object v4, p0, Lcom/loc/aX;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/aX;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aX;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/aX;->apQ:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/aX;->apS:Z

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/loc/aX;->apS:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_0

    goto :goto_2
.end method

.method c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aX;->l:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/loc/aX;->apS:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aX;->apO:Lcom/loc/k;

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aX;->apP:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "unbindService"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/aX;->apN:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aX;->apQ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "unbindService"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method d()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aX;->d:Z

    if-nez v0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-boolean v0, p0, Lcom/loc/aX;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "corse"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appkey"

    iget-object v2, p0, Lcom/loc/aX;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/aX;->apO:Lcom/loc/k;

    invoke-interface {v1, v0}, Lcom/loc/k;->aAF(Landroid/os/Bundle;)I

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    :goto_0
    return-object v3

    :cond_2
    invoke-direct {p0, v0}, Lcom/loc/aX;->aCG(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "sendCommand"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "sendCommand"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
