SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 20
AND p.CommentCount >= 6
AND p.CommentCount <= 29
AND u.DownVotes = 31
AND u.UpVotes >= 213
AND u.UpVotes <= 578

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;