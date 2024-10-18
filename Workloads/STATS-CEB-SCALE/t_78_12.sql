SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 15
AND p.Score <= 40
AND p.AnswerCount <= 4.0
AND p.FavoriteCount >= 2.0
AND u.Reputation <= 804
AND v.CreationDate >= 309
AND b.Date <= 423

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;