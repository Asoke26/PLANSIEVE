SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 13.0
AND p.CommentCount >= 1
AND u.Reputation >= 60
AND u.Reputation <= 4096
AND u.DownVotes >= 30
AND b.Date <= 1464

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND p.Id = ph.PostId;