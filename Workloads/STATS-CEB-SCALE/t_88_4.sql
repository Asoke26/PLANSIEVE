SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 2
AND p.CommentCount >= 6
AND p.CommentCount <= 28
AND u.DownVotes = 11
AND u.UpVotes >= 75
AND u.UpVotes <= 260

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;