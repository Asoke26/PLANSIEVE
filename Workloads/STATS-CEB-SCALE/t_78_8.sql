SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 12
AND p.Score <= 109
AND p.AnswerCount <= 27.0
AND p.FavoriteCount >= 21.0
AND u.Reputation <= 1088
AND v.CreationDate >= 1367
AND b.Date <= 1284

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;